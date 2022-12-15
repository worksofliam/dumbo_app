**free

ctl-opt dftactgrp(*no);

dcl-pi P1011;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P362.rpgleinc'
/copy 'qrpgleref/P435.rpgleinc'
/copy 'qrpgleref/P443.rpgleinc'

dcl-ds T1809 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1809 FROM T1809 LIMIT 1;

theCharVar = 'Hello from P1011';
dsply theCharVar;
P362();
P435();
P443();
return;