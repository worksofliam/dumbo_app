**free

ctl-opt dftactgrp(*no);

dcl-pi P4082;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3208.rpgleinc'
/copy 'qrpgleref/P1162.rpgleinc'
/copy 'qrpgleref/P2015.rpgleinc'

dcl-ds theTable extname('T116') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T116 LIMIT 1;

theCharVar = 'Hello from P4082';
dsply theCharVar;
P3208();
P1162();
P2015();
return;