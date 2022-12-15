**free

ctl-opt dftactgrp(*no);

dcl-pi P410;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P48.rpgleinc'
/copy 'qrpgleref/P173.rpgleinc'
/copy 'qrpgleref/P189.rpgleinc'

dcl-ds T54 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T54 FROM T54 LIMIT 1;

theCharVar = 'Hello from P410';
dsply theCharVar;
P48();
P173();
P189();
return;