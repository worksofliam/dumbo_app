**free

ctl-opt dftactgrp(*no);

dcl-pi P3564;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P145.rpgleinc'
/copy 'qrpgleref/P3021.rpgleinc'
/copy 'qrpgleref/P649.rpgleinc'

dcl-ds T25 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T25 FROM T25 LIMIT 1;

theCharVar = 'Hello from P3564';
dsply theCharVar;
P145();
P3021();
P649();
return;