**free

ctl-opt dftactgrp(*no);

dcl-pi P540;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3.rpgleinc'
/copy 'qrpgleref/P261.rpgleinc'
/copy 'qrpgleref/P273.rpgleinc'

dcl-ds T48 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T48 FROM T48 LIMIT 1;

theCharVar = 'Hello from P540';
dsply theCharVar;
P3();
P261();
P273();
return;