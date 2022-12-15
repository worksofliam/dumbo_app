**free

ctl-opt dftactgrp(*no);

dcl-pi P4014;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1968.rpgleinc'
/copy 'qrpgleref/P756.rpgleinc'
/copy 'qrpgleref/P2027.rpgleinc'

dcl-ds T918 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T918 FROM T918 LIMIT 1;

theCharVar = 'Hello from P4014';
dsply theCharVar;
P1968();
P756();
P2027();
return;