**free

ctl-opt dftactgrp(*no);

dcl-pi P4903;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4442.rpgleinc'
/copy 'qrpgleref/P695.rpgleinc'
/copy 'qrpgleref/P4648.rpgleinc'

dcl-ds T1005 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1005 FROM T1005 LIMIT 1;

theCharVar = 'Hello from P4903';
dsply theCharVar;
P4442();
P695();
P4648();
return;