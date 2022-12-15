**free

ctl-opt dftactgrp(*no);

dcl-pi P2810;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1553.rpgleinc'
/copy 'qrpgleref/P298.rpgleinc'
/copy 'qrpgleref/P113.rpgleinc'

dcl-ds T887 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T887 FROM T887 LIMIT 1;

theCharVar = 'Hello from P2810';
dsply theCharVar;
P1553();
P298();
P113();
return;