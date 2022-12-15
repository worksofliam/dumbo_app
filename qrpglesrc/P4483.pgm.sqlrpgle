**free

ctl-opt dftactgrp(*no);

dcl-pi P4483;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1354.rpgleinc'
/copy 'qrpgleref/P901.rpgleinc'
/copy 'qrpgleref/P4028.rpgleinc'

dcl-ds theTable extname('T447') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T447 LIMIT 1;

theCharVar = 'Hello from P4483';
dsply theCharVar;
P1354();
P901();
P4028();
return;