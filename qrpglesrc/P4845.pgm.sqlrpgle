**free

ctl-opt dftactgrp(*no);

dcl-pi P4845;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P155.rpgleinc'
/copy 'qrpgleref/P1208.rpgleinc'
/copy 'qrpgleref/P4468.rpgleinc'

dcl-ds theTable extname('T210') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T210 LIMIT 1;

theCharVar = 'Hello from P4845';
dsply theCharVar;
P155();
P1208();
P4468();
return;