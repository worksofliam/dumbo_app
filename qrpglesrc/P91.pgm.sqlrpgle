**free

ctl-opt dftactgrp(*no);

dcl-pi P91;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P42.rpgleinc'
/copy 'qrpgleref/P58.rpgleinc'
/copy 'qrpgleref/P69.rpgleinc'

dcl-ds T1260 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1260 FROM T1260 LIMIT 1;

theCharVar = 'Hello from P91';
dsply theCharVar;
P42();
P58();
P69();
return;