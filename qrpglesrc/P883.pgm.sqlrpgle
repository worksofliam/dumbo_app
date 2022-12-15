**free

ctl-opt dftactgrp(*no);

dcl-pi P883;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P741.rpgleinc'
/copy 'qrpgleref/P875.rpgleinc'
/copy 'qrpgleref/P494.rpgleinc'

dcl-ds T431 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T431 FROM T431 LIMIT 1;

theCharVar = 'Hello from P883';
dsply theCharVar;
P741();
P875();
P494();
return;