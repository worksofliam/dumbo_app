**free

ctl-opt dftactgrp(*no);

dcl-pi P5188;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4928.rpgleinc'
/copy 'qrpgleref/P5165.rpgleinc'
/copy 'qrpgleref/P4165.rpgleinc'

dcl-ds T1162 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1162 FROM T1162 LIMIT 1;

theCharVar = 'Hello from P5188';
dsply theCharVar;
P4928();
P5165();
P4165();
return;