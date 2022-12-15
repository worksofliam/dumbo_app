**free

ctl-opt dftactgrp(*no);

dcl-pi P459;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P50.rpgleinc'
/copy 'qrpgleref/P299.rpgleinc'
/copy 'qrpgleref/P194.rpgleinc'

dcl-ds T84 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T84 FROM T84 LIMIT 1;

theCharVar = 'Hello from P459';
dsply theCharVar;
P50();
P299();
P194();
return;