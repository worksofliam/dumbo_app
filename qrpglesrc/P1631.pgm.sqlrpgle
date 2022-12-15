**free

ctl-opt dftactgrp(*no);

dcl-pi P1631;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P760.rpgleinc'
/copy 'qrpgleref/P1136.rpgleinc'
/copy 'qrpgleref/P1223.rpgleinc'

dcl-ds T1087 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1087 FROM T1087 LIMIT 1;

theCharVar = 'Hello from P1631';
dsply theCharVar;
P760();
P1136();
P1223();
return;