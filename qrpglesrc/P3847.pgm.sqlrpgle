**free

ctl-opt dftactgrp(*no);

dcl-pi P3847;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1020.rpgleinc'
/copy 'qrpgleref/P1755.rpgleinc'
/copy 'qrpgleref/P505.rpgleinc'

dcl-ds T466 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T466 FROM T466 LIMIT 1;

theCharVar = 'Hello from P3847';
dsply theCharVar;
P1020();
P1755();
P505();
return;