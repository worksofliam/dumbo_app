**free

ctl-opt dftactgrp(*no);

dcl-pi P322;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P6.rpgleinc'
/copy 'qrpgleref/P263.rpgleinc'
/copy 'qrpgleref/P16.rpgleinc'

dcl-ds theTable extname('T914') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T914 LIMIT 1;

theCharVar = 'Hello from P322';
dsply theCharVar;
P6();
P263();
P16();
return;