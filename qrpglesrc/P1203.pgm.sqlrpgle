**free

ctl-opt dftactgrp(*no);

dcl-pi P1203;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P778.rpgleinc'
/copy 'qrpgleref/P1046.rpgleinc'
/copy 'qrpgleref/P16.rpgleinc'

dcl-ds theTable extname('T890') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T890 LIMIT 1;

theCharVar = 'Hello from P1203';
dsply theCharVar;
P778();
P1046();
P16();
return;