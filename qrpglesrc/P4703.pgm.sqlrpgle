**free

ctl-opt dftactgrp(*no);

dcl-pi P4703;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4083.rpgleinc'
/copy 'qrpgleref/P1667.rpgleinc'
/copy 'qrpgleref/P527.rpgleinc'

dcl-ds theTable extname('T278') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T278 LIMIT 1;

theCharVar = 'Hello from P4703';
dsply theCharVar;
P4083();
P1667();
P527();
return;