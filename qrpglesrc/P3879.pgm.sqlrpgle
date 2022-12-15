**free

ctl-opt dftactgrp(*no);

dcl-pi P3879;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P130.rpgleinc'
/copy 'qrpgleref/P2199.rpgleinc'
/copy 'qrpgleref/P707.rpgleinc'

dcl-ds T962 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T962 FROM T962 LIMIT 1;

theCharVar = 'Hello from P3879';
dsply theCharVar;
P130();
P2199();
P707();
return;