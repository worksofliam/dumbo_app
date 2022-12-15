**free

ctl-opt dftactgrp(*no);

dcl-pi P2845;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P700.rpgleinc'
/copy 'qrpgleref/P2806.rpgleinc'
/copy 'qrpgleref/P670.rpgleinc'

dcl-ds T1057 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1057 FROM T1057 LIMIT 1;

theCharVar = 'Hello from P2845';
dsply theCharVar;
P700();
P2806();
P670();
return;