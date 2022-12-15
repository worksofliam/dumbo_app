**free

ctl-opt dftactgrp(*no);

dcl-pi P444;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P289.rpgleinc'
/copy 'qrpgleref/P59.rpgleinc'
/copy 'qrpgleref/P183.rpgleinc'

dcl-ds theTable extname('T507') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T507 LIMIT 1;

theCharVar = 'Hello from P444';
dsply theCharVar;
P289();
P59();
P183();
return;