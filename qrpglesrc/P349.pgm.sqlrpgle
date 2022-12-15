**free

ctl-opt dftactgrp(*no);

dcl-pi P349;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P324.rpgleinc'
/copy 'qrpgleref/P195.rpgleinc'
/copy 'qrpgleref/P143.rpgleinc'

dcl-ds theTable extname('T655') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T655 LIMIT 1;

theCharVar = 'Hello from P349';
dsply theCharVar;
P324();
P195();
P143();
return;