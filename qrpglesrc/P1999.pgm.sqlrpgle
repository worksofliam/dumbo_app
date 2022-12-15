**free

ctl-opt dftactgrp(*no);

dcl-pi P1999;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1068.rpgleinc'
/copy 'qrpgleref/P685.rpgleinc'
/copy 'qrpgleref/P619.rpgleinc'

dcl-ds T1009 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1009 FROM T1009 LIMIT 1;

theCharVar = 'Hello from P1999';
dsply theCharVar;
P1068();
P685();
P619();
return;