**free

ctl-opt dftactgrp(*no);

dcl-pi P331;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P54.rpgleinc'
/copy 'qrpgleref/P209.rpgleinc'
/copy 'qrpgleref/P273.rpgleinc'

dcl-ds T117 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T117 FROM T117 LIMIT 1;

theCharVar = 'Hello from P331';
dsply theCharVar;
P54();
P209();
P273();
return;