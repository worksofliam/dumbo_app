**free

ctl-opt dftactgrp(*no);

dcl-pi P568;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P458.rpgleinc'
/copy 'qrpgleref/P467.rpgleinc'
/copy 'qrpgleref/P170.rpgleinc'

dcl-ds T1003 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1003 FROM T1003 LIMIT 1;

theCharVar = 'Hello from P568';
dsply theCharVar;
P458();
P467();
P170();
return;