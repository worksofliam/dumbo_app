**free

ctl-opt dftactgrp(*no);

dcl-pi P5116;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3551.rpgleinc'
/copy 'qrpgleref/P1284.rpgleinc'
/copy 'qrpgleref/P3683.rpgleinc'

dcl-ds T123 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T123 FROM T123 LIMIT 1;

theCharVar = 'Hello from P5116';
dsply theCharVar;
P3551();
P1284();
P3683();
return;