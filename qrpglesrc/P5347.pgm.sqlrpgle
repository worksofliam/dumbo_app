**free

ctl-opt dftactgrp(*no);

dcl-pi P5347;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3965.rpgleinc'
/copy 'qrpgleref/P4764.rpgleinc'
/copy 'qrpgleref/P813.rpgleinc'

dcl-ds T1812 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1812 FROM T1812 LIMIT 1;

theCharVar = 'Hello from P5347';
dsply theCharVar;
P3965();
P4764();
P813();
return;