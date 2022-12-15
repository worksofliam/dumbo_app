**free

ctl-opt dftactgrp(*no);

dcl-pi P2497;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1374.rpgleinc'
/copy 'qrpgleref/P2013.rpgleinc'
/copy 'qrpgleref/P405.rpgleinc'

dcl-ds T1192 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1192 FROM T1192 LIMIT 1;

theCharVar = 'Hello from P2497';
dsply theCharVar;
P1374();
P2013();
P405();
return;