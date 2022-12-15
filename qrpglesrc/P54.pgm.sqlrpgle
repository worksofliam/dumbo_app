**free

ctl-opt dftactgrp(*no);

dcl-pi P54;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P47.rpgleinc'
/copy 'qrpgleref/P31.rpgleinc'
/copy 'qrpgleref/P50.rpgleinc'

dcl-ds T809 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T809 FROM T809 LIMIT 1;

theCharVar = 'Hello from P54';
dsply theCharVar;
P47();
P31();
P50();
return;