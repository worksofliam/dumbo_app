**free

ctl-opt dftactgrp(*no);

dcl-pi P5533;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1122.rpgleinc'
/copy 'qrpgleref/P848.rpgleinc'
/copy 'qrpgleref/P4796.rpgleinc'

dcl-ds theTable extname('T916') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T916 LIMIT 1;

theCharVar = 'Hello from P5533';
dsply theCharVar;
P1122();
P848();
P4796();
return;