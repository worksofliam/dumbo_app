**free

ctl-opt dftactgrp(*no);

dcl-pi P1138;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1019.rpgleinc'
/copy 'qrpgleref/P730.rpgleinc'
/copy 'qrpgleref/P585.rpgleinc'

dcl-ds T1741 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1741 FROM T1741 LIMIT 1;

theCharVar = 'Hello from P1138';
dsply theCharVar;
P1019();
P730();
P585();
return;