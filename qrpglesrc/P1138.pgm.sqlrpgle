**free

ctl-opt dftactgrp(*no);

dcl-pi P1138;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P379.rpgleinc'
/copy 'qrpgleref/P1056.rpgleinc'
/copy 'qrpgleref/P721.rpgleinc'

dcl-ds T1210 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1210 FROM T1210 LIMIT 1;

theCharVar = 'Hello from P1138';
dsply theCharVar;
P379();
P1056();
P721();
return;