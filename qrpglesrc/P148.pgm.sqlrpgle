**free

ctl-opt dftactgrp(*no);

dcl-pi P148;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P7.rpgleinc'
/copy 'qrpgleref/P138.rpgleinc'

dcl-ds T1321 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1321 FROM T1321 LIMIT 1;

theCharVar = 'Hello from P148';
dsply theCharVar;
P7();
P138();
return;