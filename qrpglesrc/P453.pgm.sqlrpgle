**free

ctl-opt dftactgrp(*no);

dcl-pi P453;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P169.rpgleinc'
/copy 'qrpgleref/P146.rpgleinc'
/copy 'qrpgleref/P244.rpgleinc'

dcl-ds T287 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T287 FROM T287 LIMIT 1;

theCharVar = 'Hello from P453';
dsply theCharVar;
P169();
P146();
P244();
return;