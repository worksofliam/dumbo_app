**free

ctl-opt dftactgrp(*no);

dcl-pi P394;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P30.rpgleinc'
/copy 'qrpgleref/P169.rpgleinc'
/copy 'qrpgleref/P321.rpgleinc'

dcl-ds T318 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T318 FROM T318 LIMIT 1;

theCharVar = 'Hello from P394';
dsply theCharVar;
P30();
P169();
P321();
return;