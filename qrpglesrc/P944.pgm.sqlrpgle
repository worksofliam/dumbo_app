**free

ctl-opt dftactgrp(*no);

dcl-pi P944;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P412.rpgleinc'
/copy 'qrpgleref/P710.rpgleinc'
/copy 'qrpgleref/P255.rpgleinc'

dcl-ds T36 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T36 FROM T36 LIMIT 1;

theCharVar = 'Hello from P944';
dsply theCharVar;
P412();
P710();
P255();
return;