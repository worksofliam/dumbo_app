**free

ctl-opt dftactgrp(*no);

dcl-pi P4601;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3541.rpgleinc'
/copy 'qrpgleref/P4470.rpgleinc'
/copy 'qrpgleref/P129.rpgleinc'

dcl-ds T1239 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1239 FROM T1239 LIMIT 1;

theCharVar = 'Hello from P4601';
dsply theCharVar;
P3541();
P4470();
P129();
return;