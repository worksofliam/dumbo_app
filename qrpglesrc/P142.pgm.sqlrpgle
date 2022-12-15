**free

ctl-opt dftactgrp(*no);

dcl-pi P142;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P65.rpgleinc'
/copy 'qrpgleref/P104.rpgleinc'
/copy 'qrpgleref/P58.rpgleinc'

dcl-ds T86 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T86 FROM T86 LIMIT 1;

theCharVar = 'Hello from P142';
dsply theCharVar;
P65();
P104();
P58();
return;