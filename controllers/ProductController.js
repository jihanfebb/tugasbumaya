
import Product from "../models/ProductModel.js";
import path from "path";

export const getProducts = async (req, res)=>{
    try {
        const response = await Product.findAll();
        res.json(response);
    } catch (error) {
        console.log(error.message);
    }
}

export const getProductById = async (req, res)=>{
    try {
        const response = await Product.findOne({
            where:{
                id : req.params.id
            }
        });
        res.json(response);
    } catch (error) {
        console.log(error.message);
    }
}

export const saveProduct = (req, res)=>{
    if(req.files === null) return res.status(400).json({msg: "No File Upload"});
    const name = req.body.title;
    const file = req.files.file;
    const filesize = file.data.legth;
    const ext = path.extname(file.name);
    const FileName = file.mds + ext;
    const url = `${req.protocol}://${req.get("host")}/images/${FileName}`;
    const allowedType = ['.png', '.jpg', '.jpeg'];

    if (!allowedType.includes(ext.toLowerCase())) return res.status(422).json({msg:
    "invalid Images"});
    if (filesize > 5000000) return res.status(422).json({msg: "Image must be less than 5 MB"});

    file.mv(`./public/images/${FileName}`, async(err)=>{
        if (err) return res.status(500).json({msg: err.message});
        try {
            await Product.create({name: name, image: FileName, url: url});
            res.status(201).json({msg: "Product Created Successfuly"});
        } catch (error) {


            console.log(error.message);
        }
    })
}

export const updateProduct = (reg, res)=>{

}

export const deleteProduct = (reg, res)=>{

}