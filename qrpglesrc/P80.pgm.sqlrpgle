**free

ctl-opt dftactgrp(*no);

dcl-pi P80;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P18.rpgleinc'
/copy 'qrpgleref/P36.rpgleinc'
/copy 'qrpgleref/P42.rpgleinc'

dcl-ds T420 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T420 FROM T420 LIMIT 1;

theCharVar = 'Hello from P80';
dsply theCharVar;
P18();
P36();
P42();
return;