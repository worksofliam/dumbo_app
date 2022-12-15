**free

ctl-opt dftactgrp(*no);

dcl-pi P1036;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P477.rpgleinc'
/copy 'qrpgleref/P497.rpgleinc'
/copy 'qrpgleref/P640.rpgleinc'

dcl-ds T1598 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1598 FROM T1598 LIMIT 1;

theCharVar = 'Hello from P1036';
dsply theCharVar;
P477();
P497();
P640();
return;