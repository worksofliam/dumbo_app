**free

ctl-opt dftactgrp(*no);

dcl-pi P500;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P127.rpgleinc'
/copy 'qrpgleref/P348.rpgleinc'
/copy 'qrpgleref/P353.rpgleinc'

dcl-ds T1167 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1167 FROM T1167 LIMIT 1;

theCharVar = 'Hello from P500';
dsply theCharVar;
P127();
P348();
P353();
return;