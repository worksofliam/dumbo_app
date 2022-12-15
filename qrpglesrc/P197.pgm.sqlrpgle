**free

ctl-opt dftactgrp(*no);

dcl-pi P197;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P98.rpgleinc'
/copy 'qrpgleref/P4.rpgleinc'
/copy 'qrpgleref/P92.rpgleinc'

dcl-ds T219 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T219 FROM T219 LIMIT 1;

theCharVar = 'Hello from P197';
dsply theCharVar;
P98();
P4();
P92();
return;