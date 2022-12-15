**free

ctl-opt dftactgrp(*no);

dcl-pi P1813;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P440.rpgleinc'
/copy 'qrpgleref/P231.rpgleinc'
/copy 'qrpgleref/P555.rpgleinc'

dcl-ds T1190 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1190 FROM T1190 LIMIT 1;

theCharVar = 'Hello from P1813';
dsply theCharVar;
P440();
P231();
P555();
return;