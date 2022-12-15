**free

ctl-opt dftactgrp(*no);

dcl-pi P4126;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1326.rpgleinc'
/copy 'qrpgleref/P609.rpgleinc'
/copy 'qrpgleref/P1531.rpgleinc'

dcl-ds theTable extname('T774') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T774 LIMIT 1;

theCharVar = 'Hello from P4126';
dsply theCharVar;
P1326();
P609();
P1531();
return;