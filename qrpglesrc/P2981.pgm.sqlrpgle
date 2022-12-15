**free

ctl-opt dftactgrp(*no);

dcl-pi P2981;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1189.rpgleinc'
/copy 'qrpgleref/P1183.rpgleinc'
/copy 'qrpgleref/P2411.rpgleinc'

dcl-ds T1569 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1569 FROM T1569 LIMIT 1;

theCharVar = 'Hello from P2981';
dsply theCharVar;
P1189();
P1183();
P2411();
return;