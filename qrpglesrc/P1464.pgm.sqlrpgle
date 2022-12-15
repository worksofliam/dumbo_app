**free

ctl-opt dftactgrp(*no);

dcl-pi P1464;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1003.rpgleinc'
/copy 'qrpgleref/P837.rpgleinc'
/copy 'qrpgleref/P997.rpgleinc'

dcl-ds theTable extname('T12') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T12 LIMIT 1;

theCharVar = 'Hello from P1464';
dsply theCharVar;
P1003();
P837();
P997();
return;