**free

ctl-opt dftactgrp(*no);

dcl-pi P5235;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3759.rpgleinc'
/copy 'qrpgleref/P3633.rpgleinc'
/copy 'qrpgleref/P4145.rpgleinc'

dcl-ds T1330 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1330 FROM T1330 LIMIT 1;

theCharVar = 'Hello from P5235';
dsply theCharVar;
P3759();
P3633();
P4145();
return;