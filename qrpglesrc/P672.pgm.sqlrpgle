**free

ctl-opt dftactgrp(*no);

dcl-pi P672;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P222.rpgleinc'
/copy 'qrpgleref/P604.rpgleinc'
/copy 'qrpgleref/P469.rpgleinc'

dcl-ds T1089 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1089 FROM T1089 LIMIT 1;

theCharVar = 'Hello from P672';
dsply theCharVar;
P222();
P604();
P469();
return;