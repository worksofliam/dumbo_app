**free

ctl-opt dftactgrp(*no);

dcl-pi P4278;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3720.rpgleinc'
/copy 'qrpgleref/P3733.rpgleinc'
/copy 'qrpgleref/P780.rpgleinc'

dcl-ds T688 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T688 FROM T688 LIMIT 1;

theCharVar = 'Hello from P4278';
dsply theCharVar;
P3720();
P3733();
P780();
return;