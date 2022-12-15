**free

ctl-opt dftactgrp(*no);

dcl-pi P1862;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1271.rpgleinc'
/copy 'qrpgleref/P1820.rpgleinc'
/copy 'qrpgleref/P1783.rpgleinc'

dcl-ds T568 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T568 FROM T568 LIMIT 1;

theCharVar = 'Hello from P1862';
dsply theCharVar;
callp localProc();
P1271();
P1820();
P1783();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1862 in the procedure';
end-proc;