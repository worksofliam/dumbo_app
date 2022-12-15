**free

ctl-opt dftactgrp(*no);

dcl-pi P65;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P58.rpgleinc'
/copy 'qrpgleref/P7.rpgleinc'
/copy 'qrpgleref/P38.rpgleinc'

dcl-ds T56 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T56 FROM T56 LIMIT 1;

theCharVar = 'Hello from P65';
dsply theCharVar;
P58();
P7();
P38();
return;