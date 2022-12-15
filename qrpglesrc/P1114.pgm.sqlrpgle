**free

ctl-opt dftactgrp(*no);

dcl-pi P1114;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P684.rpgleinc'
/copy 'qrpgleref/P807.rpgleinc'
/copy 'qrpgleref/P741.rpgleinc'

dcl-ds T1723 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1723 FROM T1723 LIMIT 1;

theCharVar = 'Hello from P1114';
dsply theCharVar;
P684();
P807();
P741();
return;