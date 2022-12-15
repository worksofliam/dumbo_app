**free

ctl-opt dftactgrp(*no);

dcl-pi P4535;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3356.rpgleinc'
/copy 'qrpgleref/P3484.rpgleinc'
/copy 'qrpgleref/P4015.rpgleinc'

dcl-ds T1396 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1396 FROM T1396 LIMIT 1;

theCharVar = 'Hello from P4535';
dsply theCharVar;
P3356();
P3484();
P4015();
return;