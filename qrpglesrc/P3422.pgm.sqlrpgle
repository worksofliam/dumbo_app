**free

ctl-opt dftactgrp(*no);

dcl-pi P3422;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P121.rpgleinc'
/copy 'qrpgleref/P3038.rpgleinc'
/copy 'qrpgleref/P1349.rpgleinc'

dcl-ds theTable extname('T661') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T661 LIMIT 1;

theCharVar = 'Hello from P3422';
dsply theCharVar;
P121();
P3038();
P1349();
return;