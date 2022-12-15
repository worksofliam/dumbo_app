**free

ctl-opt dftactgrp(*no);

dcl-pi P785;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P669.rpgleinc'
/copy 'qrpgleref/P654.rpgleinc'
/copy 'qrpgleref/P398.rpgleinc'

dcl-ds theTable extname('T1244') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1244 LIMIT 1;

theCharVar = 'Hello from P785';
dsply theCharVar;
P669();
P654();
P398();
return;