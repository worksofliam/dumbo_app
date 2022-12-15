**free

ctl-opt dftactgrp(*no);

dcl-pi P4474;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P509.rpgleinc'
/copy 'qrpgleref/P980.rpgleinc'
/copy 'qrpgleref/P162.rpgleinc'

dcl-ds theTable extname('T1269') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1269 LIMIT 1;

theCharVar = 'Hello from P4474';
dsply theCharVar;
P509();
P980();
P162();
return;