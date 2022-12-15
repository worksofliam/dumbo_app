**free

ctl-opt dftactgrp(*no);

dcl-pi P3206;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2756.rpgleinc'
/copy 'qrpgleref/P2637.rpgleinc'
/copy 'qrpgleref/P1733.rpgleinc'

dcl-ds T1156 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1156 FROM T1156 LIMIT 1;

theCharVar = 'Hello from P3206';
dsply theCharVar;
P2756();
P2637();
P1733();
return;