**free

ctl-opt dftactgrp(*no);

dcl-pi P98;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P60.rpgleinc'
/copy 'qrpgleref/P42.rpgleinc'
/copy 'qrpgleref/P16.rpgleinc'

dcl-ds theTable extname('T1223') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1223 LIMIT 1;

theCharVar = 'Hello from P98';
dsply theCharVar;
P60();
P42();
P16();
return;